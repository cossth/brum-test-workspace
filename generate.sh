#!/bin/bash
set -e
export CI=true
export NX_DAEMON=false
export NX_INTERACTIVE=false

echo "Generating React App..."
npx nx g @nx/react:app --directory=apps/react-app --e2eTestRunner=none --bundler=vite --style=css --interactive=false --projectNameAndRootFormat=as-provided

echo "Generating Vue App..."
npx nx g @nx/vue:app --directory=apps/vue-app --e2eTestRunner=none --style=css --interactive=false --projectNameAndRootFormat=as-provided

echo "Generating Angular App..."
npx nx g @nx/angular:app --directory=apps/angular-app --e2eTestRunner=none --style=css --interactive=false --projectNameAndRootFormat=as-provided

echo "Generating Next App..."
npx nx g @nx/next:app --directory=apps/next-app --e2eTestRunner=none --style=css --interactive=false --projectNameAndRootFormat=as-provided

echo "Generating Nuxt App..."
npx nx g @nx/nuxt:app --directory=apps/nuxt-app --e2eTestRunner=none --style=css --interactive=false --projectNameAndRootFormat=as-provided
