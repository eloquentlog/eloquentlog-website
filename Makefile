ZOLA=.tool/zola/0.11.0/zola

setup:
	@.tool/setup-zola

build:
	@$(ZOLA) --root src --config ./src/config.toml \
		build -o ./dst

serve:
	@cd src; \
		../$(ZOLA) serve --output-dir ../dst --port 3000

.PHONY: build serve setup
