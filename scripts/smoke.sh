#!/bin/sh
npm --prefix frontend run lint >/dev/null || exit 1
npm --prefix frontend run typecheck >/dev/null || exit 1
