#!/bin/bash
# resolve-paths.sh - Resolve governance path variables in .kilo templates
# Usage: ./scripts/resolve-paths.sh <file-to-process>

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <file-to-process>"
    exit 1
fi

Kilo_FILE="$1"
CONFIG_FILE="governance/config/orchestrator-paths.json"

# Default values (used if config missing or jq unavailable)
GOVERNANCE_STATE="governance/state"
GOVERNANCE_GRAPH="governance/graph"
GOVERNANCE_TWIN="governance/twin"
GOVERNANCE_GENERATED="governance/generated"
GOVERNANCE_REPORTS="governance/reports"
GOVERNANCE_LLM_EXPORTS="governance/llm-exports"
GOVERNANCE_DECISIONS="governance/decisions"
GOVERNANCE_PLANS="governance/plans"
GOVERNANCE_PRE_PLANS="governance/pre-plans"
GOVERNANCE_AUDITS="governance/audits"
GOVERNANCE_ANALYSIS="governance/analysis"

# Try to read from config if available
if command -v jq &> /dev/null && [ -f "$CONFIG_FILE" ]; then
    GOVERNANCE_STATE=$(jq -r '.paths.state // "governance/state"' "$CONFIG_FILE" 2>/dev/null || echo "governance/state")
    GOVERNANCE_GRAPH=$(jq -r '.paths.graph // "governance/graph"' "$CONFIG_FILE" 2>/dev/null || echo "governance/graph")
    GOVERNANCE_TWIN=$(jq -r '.paths.twin // "governance/twin"' "$CONFIG_FILE" 2>/dev/null || echo "governance/twin")
    GOVERNANCE_GENERATED=$(jq -r '.paths.generated // "governance/generated"' "$CONFIG_FILE" 2>/dev/null || echo "governance/generated")
    GOVERNANCE_REPORTS=$(jq -r '.paths.reports // "governance/reports"' "$CONFIG_FILE" 2>/dev/null || echo "governance/reports")
    GOVERNANCE_LLM_EXPORTS=$(jq -r '.paths.llm_exports // "governance/llm-exports"' "$CONFIG_FILE" 2>/dev/null || echo "governance/llm-exports")
fi

# Substitute variables in file
sed -i "
    s|\${GOVERNANCE_STATE}|$GOVERNANCE_STATE|g
    s|\${GOVERNANCE_GRAPH}|$GOVERNANCE_GRAPH|g
    s|\${GOVERNANCE_TWIN}|$GOVERNANCE_TWIN|g
    s|\${GOVERNANCE_GENERATED}|$GOVERNANCE_GENERATED|g
    s|\${GOVERNANCE_REPORTS}|$GOVERNANCE_REPORTS|g
    s|\${GOVERNANCE_LLM_EXPORTS}|$GOVERNANCE_LLM_EXPORTS|g
    s|\${GOVERNANCE_DECISIONS}|$GOVERNANCE_DECISIONS|g
    s|\${GOVERNANCE_PLANS}|$GOVERNANCE_PLANS|g
    s|\${GOVERNANCE_PRE_PLANS}|$GOVERNANCE_PRE_PLANS|g
    s|\${GOVERNANCE_AUDITS}|$GOVERNANCE_AUDITS|g
    s|\${GOVERNANCE_ANALYSIS}|$GOVERNANCE_ANALYSIS|g
" "$Kilo_FILE"
