FROM socrata/py_analysis

RUN pip install nltk==3.0.0

RUN mkdir -p /home/socrata

ENV HOME /home/socrata

RUN python -m nltk.downloader -d $HOME/nltk_data stopwords &&\
    python -m nltk.downloader -d $HOME/nltk_data punkt &&\
    python -m nltk.downloader -d $HOME/nltk_data wordnet &&\
    python -m nltk.downloader -d $HOME/nltk_data maxent_treebank_pos_tagger
