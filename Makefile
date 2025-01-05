.PHONY: start debug run stop clean

start:
	@mkdir -p data
	@docker compose up -d
	@echo "open http://localhost:3000"

debug:
	@docker exec -it ollama /bin/bash

llms:=llama3.2:3b deepseek-coder-v2:16b
run: start
	# Download LLMs
	for llm in $(llms); do \
		echo "Downloading $${llm}"; \
		docker exec my-ollama ollama pull $${llm}; \
	done

stop:
	@docker compose down

clean: stop
	@rm -rf data

