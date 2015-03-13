FROM gcc:4.9.2
RUN apt-get update && apt-get -y install wget  && apt-get clean
RUN wget http://downloads.sourceforge.net/project/samtools/samtools/1.2/samtools-1.2.tar.bz2 && tar jxvf samtools-1.2.tar.bz2 && cd samtools-1.2 && make && make test && make install && make clean && cd .. && rm -rf samtools-1.2 samtools-1.2.tar.bz2

ENTRYPOINT ["/usr/local/bin/samtools"]
