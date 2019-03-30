ARG $GPAT
FROM rocker/verse:devel

RUN apt install --upgrade -y pandoc pandoc-citeproc
RUN  tlmgr install acronym amsbsy amsgen amsmath amstext array atveryend auxhook arsclassica \
  && tlmgr install beramono biblatex bigintcalc bitset booktabs caption caption3 classicthesis \
  && tlmgr install csquotes epstopdf-base etexcmds etoolbox everyshi expl3 \
  && tlmgr install fontenc gamsopn gatbegshi gbabel gettitlestring ghobsub-hyperref \
  && tlmgr install gkvsetkeys glatexrelease glstlang2 gpdfescape graphics graphicx grfext gscrlayer \
  && tlmgr install gsilence gsuffix hobsub hobsub-generic hopatch hycolor \
  && tlmgr install hyperref ifluatex ifpdf ifthen ifvtex ifxetex infwarerr inputenc \
  && tlmgr install install intcalc keyval kvdefinekeys kvoptions letltxmacro listings logreq \
  && tlmgr install lstlang1 lstlang1tlmgr lstlang2 lstlang3 lstmisc ltxcmds mathpazo microtype \
  && tlmgr install mparhack nameref pdftexcmds prelim2e refcount relsize rerunfilecheck scrbase \
  && tlmgr install scrhack scrkbase scrlayer-scrpage scrlfile scrtime silence \
  && tlmgr install subfig tabularx textcase textcomp titlesec tocbasic tocloft trig \
  && tlmgr install typearea uniquecounter url xcolor xcolor-patch xparse xpatch xspace xstring
RUN R -e "install.packages(c('pls', 'Renvlp', 'ggpubr', 'shinyjs', 'shinydashboard', \
      'reshape2', 'glmnet', 'doParallel', 'parallel', 'gridExtra', \
      'pander', 'kableExtra', 'effects', 'svglite', 'shinythemes', \
      'shinydashboardPlus', 'DT', 'linl'), dependencies = TRUE)" \
  && R -e "devtools::install_github('tidyverse/tidyverse')" \
  && R -e "devtools::install_github('clauswilke/ggridges')" \
  && R -e "devtools::install_github('simulatr/simrel', dependencies=TRUE)" \
  && R -e "devtools::install_github('rstudio/flexdashboard')" \
  && R -e "devtools::install_github('rstudio/DT')" \
  && R -e "devtools::install_github('nik01010/dashboardthemes')"


