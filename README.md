# iwamasa-2022

```
├─ data
│  ├─ interm
│  │  ├─ non-treated-dataset
│  │  └─ skeleton-non-treated-dataset
│  ├─ processed
│  │  ├─ segment-non-treated-dataset
│  │  └─ network-non-treated-dataset
│  └─ raw
├─ models
├─ notebooks
│  ├─ extract_network-features.ipynb
│  ├─ extract_network.ipynb
│  ├─ segment_non-treated-leaf.ipynb
│  └─ skeletonization.ipynb
├─ Dockerfile
├─ docker-compose.yml
├─ pyproject.toml
├─ poetry.lock
└─ README.md
```

## Installation

```shell
docker compose up -d
docker compose exec workspace bash
poetry install
```

## description

* segment_non-treated-leaf.ipynb
    * To segment leaf vein images
* skeletonization.ipynb
    * To convert the segmented vein images into skeleton images of 1 pixel width
* extract_network.ipynb
    * To extract the vein networks from the skealton images
* extract_network-features.ipynb
    * To extract features from the vein networks

## License
The source code is licensed MIT.
The documents and data are licensed under a [Creative Commons Attribution 4.0 International (CC BY 4.0) License](https://creativecommons.org/licenses/by/4.0/legalcode).
