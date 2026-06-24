FROM ghcr.io/lowlighter/metrics:v3.34

COPY source/plugins/core/index.mjs /metrics/source/plugins/core/index.mjs
COPY source/plugins/languages/index.mjs /metrics/source/plugins/languages/index.mjs
COPY source/plugins/languages/analyzer/analyzer.mjs /metrics/source/plugins/languages/analyzer/analyzer.mjs
COPY source/templates/classic/partials/languages.ejs /metrics/source/templates/classic/partials/languages.ejs

ENTRYPOINT node /metrics/source/app/action/index.mjs
