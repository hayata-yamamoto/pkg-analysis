# Package Analysis through Network Analysis Methods

## What's this?

The purpose of this repository is to apply some network analysis methods, which is precisely based on graph theory, to sample data. This repository **does not** have 

- Academic or technical deep explanation
- Meaningful background (I just played with data)
- Insightful Results

## Setup

### Assumptions

> Python: ^3.7

### Installation

**local**

```bash
$ python -m venv .venv 
$ source .venv/bin/activate
$ pip install -r requirements.txt
$ jupyter lab 
```

**docker**

```bash 
$ docker build -t <image-name> .
$ docker run -it -p 8888:8888 <image-name> 

# If you want
# $ docker run -d --rm -p 8080:8080 plantuml/plantuml-server:jetty
```

Then, open your browser by [localhost:8888](http://localhost:8888). Probably, JupyterLab requires you to input access token (it's already outputted on console.) 


## Data
The data was extracted from [collection.abc](https://docs.python.org/ja/3/library/collections.abc.html). 

Only on a diagram, I wrote down some functions to understand what functions are declared as an abstract method, and what functions are added on some classes. Look at [Diagram](./out/uml/python-abc-collections/collections.abc.png)


Data is following [Gremlin style](https://docs.aws.amazon.com/ja_jp/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html) because I'm aiming to insert this data into AWS Neptune. From my perspective, I have to deal with some Graph DB in real business situations. For further improvements, I just chose to store data based on Gremlin style.

If your interest to AWS Neptune -> [here](https://aws.amazon.com/jp/neptune/)

## Analysis 

On this small dataset, I used

- [Degree Centrality](https://networkx.github.io/documentation/stable/reference/algorithms/generated/networkx.algorithms.centrality.degree_centrality.html#networkx.algorithms.centrality.degree_centrality) 
- [Closeness Centrarity](https://networkx.github.io/documentation/stable/reference/algorithms/centrality.html#closeness)
- [Betweeness Centrality](https://networkx.github.io/documentation/stable/reference/algorithms/generated/networkx.algorithms.centrality.betweenness_centrality.html#networkx.algorithms.centrality.betweenness_centrality)
- [Page Rank](https://networkx.github.io/documentation/stable/reference/algorithms/generated/networkx.algorithms.link_analysis.pagerank_alg.pagerank_numpy.html#networkx.algorithms.link_analysis.pagerank_alg.pagerank_numpy)

Then, my interpretation was added, it's not important,though :)


## Thanks

These are very helpful to do this activities. Arigatou!

**Tools**
- [Visual Studio Code](https://github.com/microsoft/vscode)
- [PlantUML](https://github.com/plantuml/plantuml-server)
- [JupyterLab](https://github.com/jupyterlab/jupyterlab)

**Extensions**
- [VSCode PlantUML](https://github.com/qjebbs/vscode-plantuml)

**Libraries**
- [Networkx](https://github.com/networkx/networkx)

## References
**UML**
- [PlantUML Overview](https://plantuml.com/ja/)
- [Class Diagram](http://www.agilemodeling.com/style/classDiagram.htm)
- [UML Tutorial](https://sparxsystems.com/resources/tutorials/uml2/index.html)
- [UMLの爆速プレビュー環境をVisual Studio Code + PlantUML Server on Dockerで簡単に構築する](https://dev.classmethod.jp/articles/plantuml-server-on-docker/)

**Python**
- [Python](https://github.com/python/cpython)
- [collections.abc (Python)](https://docs.python.org/ja/3/library/collections.abc.html)
- [typing (Python)](https://docs.python.org/ja/3/library/typing.html)
- [Pythonの組み込みデータ型の分類表（ミュータブル等）
](https://gammasoft.jp/blog/python-built-in-types/)

**Network Analysis & Graph Theory**
- [Gremlin Load Data Format](https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html)
- [Networkx Documentation](https://networkx.github.io/documentation/stable/index.html)
- [PageRank (Wikipedia)](https://en.wikipedia.org/wiki/PageRank#Python)
- [グラフ理論](https://amzn.to/36p1qfm)
- [グラフ理論入門 基本とアルゴリズム](https://amzn.to/36pOZQg)
- [つながりのビックデータ解析 人間関係ネットワークの科学と活用](https://www.nii.ac.jp/userdata/shimin/documents/H28/160622_1stlec.pdf)