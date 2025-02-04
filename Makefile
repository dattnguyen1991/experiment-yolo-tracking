.PHONY: export lint

export:
	python3 -m src.export

lint:
	pre-commit run --all-files

tracking_online:
	python3 -m src.tracking.simple --video-path samples/highway.mp4

tracking_offline:
	python3 -m src.tracking.optimized --video-path samples/highway.mp4

counting_object:
	python3 -m src.object_counting

yolo-world:
	python3 -m src.yolo-world.custom_prompt

