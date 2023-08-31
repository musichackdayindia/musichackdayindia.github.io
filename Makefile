
.PHONY: build
build:
	docker build -t mhd2023 .

.PHONY: serve
serve:
	docker run -v $(pwd):/code -p 4000:4000 mhd2023
