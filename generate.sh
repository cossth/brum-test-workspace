#!/bin/bash
set -e
export CI=true
export NX_DAEMON=false
export NX_INTERACTIVE=false
export NX_IGNORE_UNSUPPORTED_TS_SETUP="true"

[ ! -d "apps/react-app" ] && (echo "Generating React App..."; npx nx g @nx/react:app --directory=apps/react-app --e2eTestRunner=none --bundler=vite --style=css --interactive=false) || echo "React App exists"

[ ! -d "apps/vue-app" ] && (echo "Generating Vue App..."; npx nx g @nx/vue:app --directory=apps/vue-app --e2eTestRunner=none --style=css --interactive=false) || echo "Vue App exists"

[ ! -d "apps/angular-app" ] && (echo "Generating Angular App..."; npx nx g @nx/angular:app --directory=apps/angular-app --e2eTestRunner=none --style=css --interactive=false) || echo "Angular App exists"

[ ! -d "apps/next-app" ] && (echo "Generating Next App..."; npx nx g @nx/next:app --directory=apps/next-app --e2eTestRunner=none --style=css --interactive=false) || echo "Next App exists"

[ ! -d "apps/nuxt-app" ] && (echo "Generating Nuxt App..."; npx nx g @nx/nuxt:app --directory=apps/nuxt-app --e2eTestRunner=none --style=css --interactive=false) || echo "Nuxt App exists"
