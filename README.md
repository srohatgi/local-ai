# MY-AI: YOUR PRIVATE LLM

This repo allows one to spin private LLMs with a UI for personal use.

## Running

```
$ make run
$ open localhost:3000
```

By default, `llama3` LLM is downloaded and available for use. 

[Other models](https://ollama.com/library) such as `llama2-uncensored` can be downloaded as well:

```
$ make run llm=llama2-uncensored
```

## Stopping

```
$ make stop
```

## Removing Models

```
$ make clean
```