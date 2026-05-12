# nav-generator-template

Template repo for generating bookmark/nav pages using the [nav-generator](https://github.com/synle/nav-generator) core library. Plain HTML + JS with Prettier; served locally via `http-server` and deployable to GitHub Pages.

## Quick Start

Install dependencies:

```bash
npm ci || npm install --no-fund --prefer-offline
```

Run the dev server (auto-reload on `*.json`, `*.scss`, `*.jsx`, `*.js`):

```bash
npm run dev
```

Or start a plain static server on `127.0.0.1:8080`:

```bash
npm start
```

Rebuild template assets (`index.html`, `dev.sh`) from the upstream nav-generator:

```bash
npm run build
```

Format the codebase:

```bash
npm run format
```
