#!/bin/sh

openapi-generator generate -i swagger-v1.yaml -g elixir -c openapi-generator-config.json -o .
LC_ALL=C find ./lib -type f -exec sed -i '' -e 's/""@url""/"@url"/g' {} \;
LC_ALL=C find ./lib -type f -exec sed -i '' -e 's/""@urlTaxReductionList""/"@urlTaxReductionList"/g' {} \;
LC_ALL=C find ./lib -type f -exec sed -i '' -e 's/""@TotalResources""/"@TotalResources"/g' {} \;
LC_ALL=C find ./lib -type f -exec sed -i '' -e 's/""@TotalPages""/"@TotalPages"/g' {} \;
LC_ALL=C find ./lib -type f -exec sed -i '' -e 's/""@CurrentPage""/"@CurrentPage"/g' {} \;
git checkout .gitignore README.md mix.exs lib/fortnox_ex/connection.ex
