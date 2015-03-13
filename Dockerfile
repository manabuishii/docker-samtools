FROM gcc:4.9.2
RUN apt-get update && apt-get -y install wget  && apt-get clean
RUN wget http://downloads.sourceforge.net/project/samtools/samtools/0.1.19/samtools-0.1.19.tar.bz2 && tar jxvf samtools-0.1.19.tar.bz2 && cd samtools-0.1.19 && make && cp `find . -perm 755` /usr/local/bin && cd .. && rm -rf samtools-0.1.19 samtools-0.1.19.tar.bz2

ENTRYPOINT ["/usr/local/bin/samtools"]
