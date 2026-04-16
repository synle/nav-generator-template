curl -sfL https://raw.githubusercontent.com/synle/gha-workflows/HEAD/dev.sh | \
bash -s -- '*.json *.scss *.jsx *.js' 'npm run start'
