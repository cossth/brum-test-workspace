#!/bin/bash
set -e

echo "Generating React App..."
npx nx g @nx/react:app react-app --directory=apps/react-app --e2eTestRunner=none --bundler=vite --style=css --interactive=false

echo "Generating Vue App..."
npx nx g @nx/vue:app vue-app --directory=apps/vue-app --e2eTestRunner=none --style=css --interactive=false

echo "Generating Angular App..."
npx nx g @nx/angular:app angular-app --directory=apps/angular-app --e2eTestRunner=none --style=css --interactive=false

echo "Generating Next App..."
npx nx g @nx/next:app next-app --directory=apps/next-app --e2eTestRunner=none --style=css --appDir=true --interactive=false

echo "Generating Nuxt App..."
npx nx g @nx/nuxt:app nuxt-app --directory=apps/nuxt-app --e2eTestRunner=none --style=css --interactive=false
