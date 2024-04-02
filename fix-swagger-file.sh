#!/bin/sh

sed -i '' 's/"@url"/'"'"'@url'"'"'/g' swagger-v1.yaml
sed -i '' 's/"@urlTaxReductionList"/'"'"'@urlTaxReductionList'"'"'/g' swagger-v1.yaml
sed -i '' 's/"@TotalResources"/'"'"'@TotalResources'"'"'/g' swagger-v1.yaml
sed -i '' 's/"@TotalPages"/'"'"'@TotalPages'"'"'/g' swagger-v1.yaml
sed -i '' 's/"@CurrentPage"/'"'"'@CurrentPage'"'"'/g' swagger-v1.yaml
