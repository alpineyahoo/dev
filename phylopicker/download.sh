#!/usr/bin/env bash

URL="https://api.phylopic.org"
totalJSON=$(curl -sL "$URL/images")
build=$(echo $totalJSON | jq ".build")
itemsPerPage=$(echo $totalJSON | jq -r ".itemsPerPage")
totalItems=$(echo $totalJSON | jq -r ".totalItems")
totalPages=$(echo $totalJSON | jq -r ".totalPages")

echo "itemsPerPage: $itemsPerPage"
echo "totalPages: $totalPages"
echo "You are downloading $totalItems images total. Be patient to complete :)"

for page in $(seq 1 $totalPages)
do
JSON=$(curl -s "$URL/images?build=$build&page=$((page - 1))")
	for item in $(seq 1 $itemsPerPage)
	do
	UUID=$(echo $JSON | jq -r "._links.items.[$((item - 1))].href")
	itemURL=$(curl -s "$URL$UUID" | jq -r "._links.sourceFile.href") # output image file URL
	title=$(echo $JSON | jq -r "._links.items.[$((item - 1))].title") # output title
	curl -s $itemURL -o "${title}.svg"
	done
echo "Page $page done."
done
echo "All download completed."
