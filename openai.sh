#!/bin/zsh
echo "Calling OpenAI..."
PROMPT="Tell me something interesting about the Spring Framework"

curl -sS https://platform.ai.reksoft.com/api/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d '{
    "model": "minimax-m2",
    "messages": [
      {
        "role": "user",
        "content": "'"${PROMPT}"'"
      }
    ]
  }'
