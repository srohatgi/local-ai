
start:
	@mkdir -p data
	@docker compose up -d
	@echo "open http://localhost:3000"

debug:
	@docker exec -it ollama /bin/bash

llm:=llama3
run: start
	@$(eval COUNT=$(shell docker exec my-ollama ollama list | grep $(llm) | wc -l))
	@if [ $(COUNT) -gt 0 ]; then \
		echo "$(llm) is already present"; \
	else \
		docker exec my-ollama ollama pull $(llm); \
	fi

stop:
	@docker compose down