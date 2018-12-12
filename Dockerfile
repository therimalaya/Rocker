ARG $GPAT
FROM rocker/verse:devel

RUN R -e "install.packages(c('pls', 'Renvlp', 'ggpubr', 'shinyjs', 'shinydashboard', \
      'reshape2', 'glmnet', 'doParallel', 'parallel', 'gridExtra', \
      'pander', 'kableExtra', 'effects', 'svglite'), dependencies = TRUE)" \
  && tlmgr install elsarticle subfig enumitem float xcolor colortbl cleveref tabu varwidth psnfss setspace palatino mathpazo ulem\
  && R -e "devtools::install_github('simulatr/simrel', dependencies=TRUE)" \
  && R -e "devtools::install_github('rstudio/flexdashboard')" \
  && R -e "devtools::install_github('rstudio/DT')"


