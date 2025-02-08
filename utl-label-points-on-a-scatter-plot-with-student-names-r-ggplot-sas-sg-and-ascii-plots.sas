%let pgm=utl-label-points-on-a-scatter-plot-with-student-names-r-ggplot-sas-sg-and-ascii-plots;

%stop_submission;

Label points on a scatter plot with student names r ggplot sas sg and ascii plots

https://stackoverflow.com/questions/15624656/label-points-in-geom-point

           SOLUTIONS

             1 sas ascii lineprinter plot
             2 sas sg grahics plot
             3 r ggplot ggrepel
             4 related repos

sas sgplot
https://tinyurl.com/cafhuuyn
https://github.com/rogerjdeangelis/utl-label-points-on-a-scatter-plot-with-student-names-r-ggplot-sas-sg-and-ascii-plots/blob/main/sgplot.png

r ggplot ggrepel
https://tinyurl.com/2kbk69uw
https://github.com/rogerjdeangelis/utl-label-points-on-a-scatter-plot-with-student-names-r-ggplot-sas-sg-and-ascii-plots/blob/main/ggplot.png

github
https://tinyurl.com/2ewpzwpd
https://github.com/rogerjdeangelis/utl-label-points-on-a-scatter-plot-with-student-names-r-ggplot-sas-sg-and-ascii-plots

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/**************************************************************************************************************************/
/*                          |                                         |                                                   */
/*           INPUT          |                                         |                                                   */
/*           =====          |                 PROCESS                 |                      OUTPUT                       */
/*                          |                 =======                 |                      ======                       */
/*  NAME     HEIGHT WEIGHT  |                                         |                                                   */
/*                          | 1 SAS ASCII PLOT                        |                                                   */
/*  Alfred    69.0   112.5  | ================                        |                      WEIGHT                       */
/*  Alice     56.5    84.0  |                                         |     50       75       100      125      150       */
/*  Barbara   65.3    98.0  | options ls=64 ps=34;                    |      +--------+--------+--------+--------+--      */
/*  Carol     62.8   102.5  | proc plot data=sd1.have(                |      |                                     |      */
/*  Henry     63.5   102.5  | rename=height=h12345678901234567891234);|   75 +                                     + 75   */
/*  James     57.3    83.0  |   plot h12345678901234567891234*weight  |      |                                     |      */
/*  Jane      59.8    84.5  |     ='*' $ name / box;                  |      |                             Philip *|      */
/*  Janet     62.5   112.5  | run;quit;                               |      |                                     |      */
/*  Jeffrey   62.5    84.0  |                                         |   70 +                                     + 70   */
/*  John      59.0    99.5  | 2 SAS SG GRAPH                          |      |                       * Alfred      |      */
/*  Joyce     51.3    50.5  | ==============                          |      |                       Ronald *      |      */
/*  Judy      64.3    90.0  |                                         |      |              William * Mary         |      */
/*  Louise    56.3    77.0  | %utlfkil(d:\png\labelpts.png)           | H 65 +                 * Barbara  * Robert + 65 H */
/*  Mary      66.5   112.0  | ods listing gpath='d:\png';             | E    |         Judy *    * Henry           |    E */
/*  Philip    72.0   150.0  | ods graphics /reset                     | I    |    Jeffrey *      *   * Janet       |    I */
/*  Robert    64.8   128.0  | imagename="labelpts" imagefmt=png;      | G    |                 Carol               |    G */
/*  Ronald    67.0   133.0  | proc template;                          | T 60 +            * Jane                   + 60 T */
/*  Thomas    57.5    85.0  |  define statgraph scatter;              |      |                  * John             |      */
/*  William   66.5   112.0  |  begingraph;                            |      |      James ** Thomas                |      */
/*                          |    entrytitle "weight vs height";       |      |   Louise * * Alice                  |      */
/* options                  |    layout overlay;                      |   55 +                                     + 55   */
/*  validvarname=upcase;    |       scatterplot                       |      |                                     |      */
/* libname sd1 "d:/sd1";    |          y = weight x = height          |      |                                     |      */
/* data sd1.have;           |          / datalabel = name             |      |* Joyce                              |      */
/*   input NAME$            |        datalabelattrs=(size=12);        |   50 +                                     + 50   */
/*   HEIGHT                 |    endlayout;                           |      |                                     |      */
/*   WEIGHT;                |  endgraph;                              |      +--------+--------+--------+--------+--      */
/* cards4;                  |  end;                                   |       50       75       100      125      150     */
/* Alfred 69 112.5          |  run;quit;                              |                        WEIGHT                     */
/* Alice 56.5 84            |                                         |\                                                  */
/* Barbara 65.3 98          |                                         | --------------------------------------------------*/
/* Carol 62.8 102.5         |  proc sgrender data = sd1.have          |                                                   */
/* Henry 63.5 102.5         |   template = scatter;                   |                                                   */
/* James 57.3 83            |  run;quit                               |  d:/png/sgplot.png                                */
/* Jane 59.8 84.5           |  ods graphics off;                      |  github https://tinyurl.com/cafhuuyn              */
/* Janet 62.5 112.5         |  ods listing;                           |                                                   */
/* Jeffrey 62.5 84          |                                         |                                                   */
/* John 59 99.5             | ----------------------------------------|---------------------------------------------------*/
/* Joyce 51.3 50.5          |                                         |                                                   */
/* Judy 64.3 90             | 3 R GGPLOT GGREPEL                      |   d:/png/ggplot.png                               */
/* Louise 56.3 77           | ==================                      |   github https://tinyurl.com/2kbk69uw             */
/* Mary 66.5 112            |                                         |                                                   */
/* Philip 72 150            |                                         |                                                   */
/* Robert 64.8 128          | %utlfkil(d:/png/cls.png)                |                                                   */
/* Ronald 67 133            |                                         |                                                   */
/* Thomas 57.5 85           | %utl_rbeginx;                           |                                                   */
/* William 66.5 112         | parmcards4;                             |                                                   */
/* ;;;;                     | library(haven)                          |                                                   */
/* run;quit;                | library(ggplot2)                        |                                                   */
/*                          | library(ggrepel)                        |                                                   */
/*                          | source("c:/oto/fn_tosas9x.R")           |                                                   */
/*                          | have<-read_sas(                         |                                                   */
/*                          |  "d:/sd1/have.sas7bdat")                |                                                   */
/*                          | print(have)                             |                                                   */
/*                          | png("d:/png/cls.png")                   |                                                   */
/*                          | clsplot <- ggplot(hav                   |                                                   */
/*                          |   ,aes(x= HEIGHT                        |                                                   */
/*                          |   ,y = WEIGHT)) +                       |                                                   */
/*                          |   geom_point(color="blue",size=3)       |                                                   */
/*                          | clsplot +                               |                                                   */
/*                          |   geom_label_repel(aes(label=NAME),     |                                                   */
/*                          |   box.padding   = 0.35,                 |                                                   */
/*                          |   point.padding = 0.5,                  |                                                   */
/*                          |   segment.color = 'grey50') +           |                                                   */
/*                          |   theme_classic()                       |                                                   */
/*                          | dev.off()                               |                                                   */
/*                          | ;;;;                                    |                                                   */
/*                          | %utl_rendx;                             |                                                   */
/*                          |                                         |                                                   */
/**************************************************************************************************************************/

/*                   _ _                       _       _                   _       _
/ |  ___  __ _ ___  | (_)_ __   ___ _ __  _ __(_)_ __ | |_ ___ _ __  _ __ | | ___ | |_
| | / __|/ _` / __| | | | `_ \ / _ \ `_ \| `__| | `_ \| __/ _ \ `__|| `_ \| |/ _ \| __|
| | \__ \ (_| \__ \ | | | | | |  __/ |_) | |  | | | | | ||  __/ |   | |_) | | (_) | |_
|_| |___/\__,_|___/ |_|_|_| |_|\___| .__/|_|  |_|_| |_|\__\___|_|   | .__/|_|\___/ \__|
                                   |_|                              |_|
*/

options ls=64 ps=34;
proc plot data=sd1.have(
 rename=height=h12345678901234567891234);
  plot h12345678901234567891234*weight
    ='*' $ name / box haxis=50 to 150 by 25;
run;quit;
options ls=255 ps=65;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*                       WEIGHT                                                                                           */
/*       50       75       100      125      150                                                                          */
/*        +--------+--------+--------+--------+--                                                                         */
/*        |                                     |                                                                         */
/*        |                                     |                                                                         */
/*     75 +                                     + 75                                                                      */
/*        |                                     |                                                                         */
/*        |                             Philip *|                                                                         */
/*        |                                     |                                                                         */
/*     70 +                                     + 70                                                                      */
/*        |                       * Alfred      |                                                                         */
/*        |                       Ronald *      |                                                                         */
/*        |              William * Mary         |                                                                         */
/*   H 65 +                 * Barbara  * Robert + 65 H                                                                    */
/*   E    |         Judy *    * Henry           |    E                                                                    */
/*   I    |    Jeffrey *      *   * Janet       |    I                                                                    */
/*   G    |                 Carol               |    G                                                                    */
/*   T 60 +            * Jane                   + 60 T                                                                    */
/*        |                  * John             |                                                                         */
/*        |      James ** Thomas                |                                                                         */
/*        |   Louise * * Alice                  |                                                                         */
/*     55 +                                     + 55                                                                      */
/*        |                                     |                                                                         */
/*        |                                     |                                                                         */
/*        |* Joyce                              |                                                                         */
/*     50 +                                     + 50                                                                      */
/*        |                                     |                                                                         */
/*        +--------+--------+--------+--------+--                                                                         */
/*       50       75       100      125      150                                                                          */
/*                                                                                                                        */
/*                       WEIGHT                                                                                           */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*___                                                      _     _                 _       _
|___ \   ___  __ _ ___   ___  __ _    __ _ _ __ __ _ _ __ | |__ (_) ___ ___  _ __ | | ___ | |_
  __) | / __|/ _` / __| / __|/ _` |  / _` | `__/ _` | `_ \| `_ \| |/ __/ __|| `_ \| |/ _ \| __|
 / __/  \__ \ (_| \__ \ \__ \ (_| | | (_| | | | (_| | |_) | | | | | (__\__ \| |_) | | (_) | |_
|_____| |___/\__,_|___/ |___/\__, |  \__, |_|  \__,_| .__/|_| |_|_|\___|___/| .__/|_|\___/ \__|
                             |___/   |___/          |_|                     |_|

*/

%utlfkil(d:\png\sgplot.png)

ods listing gpath='d:\png';
ods graphics /reset
imagename="sgplot" imagefmt=png;
proc template;
 define statgraph scatter;
 begingraph;
   entrytitle "weight vs height";
   layout overlay;
      scatterplot
         y = weight x = height
         / datalabel = name
       datalabelattrs=(size=12);
   endlayout;
 endgraph;
 end;
 run;quit;

 proc sgrender data = sd1.have
  template = scatter;
 run;quit

ods graphics off;
ods listing;

/**************************************************************************************************************************/
/*                                                                                                                        */
/* d:/png/ggplot.png                                                                                                      */
/* github https://tinyurl.com/2kbk69uw                                                                                    */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*____                     _       _                                     _
|___ /    __ _  __ _ _ __ | | ___ | |_    __ _  __ _ _ __ ___ _ __   ___| |
  |_ \   / _` |/ _` | `_ \| |/ _ \| __|  / _` |/ _` | `__/ _ \ `_ \ / _ \ |
 ___) | | (_| | (_| | |_) | | (_) | |_  | (_| | (_| | | |  __/ |_) |  __/ |
|____/   \__, |\__, | .__/|_|\___/ \__|  \__, |\__, |_|  \___| .__/ \___|_|
         |___/ |___/|_|                  |___/ |___/         |_|
*/

%utlfkil(d:/png/ggplot.png)

%utl_rbeginx;
parmcards4;
library(haven)
library(ggplot2)
library(ggrepel)
source("c:/oto/fn_tosas9x.R")
have<-read_sas("d:/sd1/have.sas7bdat")
print(have)
png("d:/png/ggplot.png")
clsplot <- ggplot(have
  ,aes(x= HEIGHT
  ,y = WEIGHT)) +
  geom_point(color = "blue", size = 3)
clsplot +
  geom_label_repel(aes(label = NAME),
  box.padding   = 0.35,
  point.padding = 0.5,
  segment.color = 'grey50') +
  theme_classic()
dev.off()
;;;;
%utl_rendx;


/**************************************************************************************************************************/
/*                                                                                                                        */
/* d:/png/ggplot.png                                                                                                      */
/* github https://tinyurl.com/2kbk69uw                                                                                    */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*  _              _       _           _
| || |    _ __ ___| | __ _| |_ ___  __| |  _ __ ___ _ __   ___  ___
| || |_  | `__/ _ \ |/ _` | __/ _ \/ _` | | `__/ _ \ `_ \ / _ \/ __|
|__   _| | | |  __/ | (_| | ||  __/ (_| | | | |  __/ |_) | (_) \__ \
   |_|   |_|  \___|_|\__,_|\__\___|\__,_| |_|  \___| .__/ \___/|___/
                                                   |_|
*/

https://github.com/rogerjdeangelis/utl-create-a-sankey-diagram-using-r-packages-dplyr-ggsankey-and-ggplot2-lie-stacked-bar-chart
https://github.com/rogerjdeangelis/utl-creating-circular-boxplot-for-circadian-data-r-ggplot-graphics
https://github.com/rogerjdeangelis/utl-creating-stacked-ascii-line-bar-plots-and-sas-sgplots-and-r-ggplot2
https://github.com/rogerjdeangelis/utl-drawing-a-world-map-using-the-eckert-projection-ggplot-map-rnaturalearth
https://github.com/rogerjdeangelis/utl-lattice-plots-six-histograms-in-three-rows-and-two-columns-ggplot-sgpanels-in-sas-wps-and-r
https://github.com/rogerjdeangelis/utl-overlay-a-small-version-of-a-plot-inside-a-larger-plot-window-within-window-r-ggplot
https://github.com/rogerjdeangelis/utl-plot-every-column-against-every-other-column-ggplot-ods-wps
https://github.com/rogerjdeangelis/utl-r-graphics-vs-wps-base-graphics-layering-in-r-versus-procs-in-wps-base-ggplot2
https://github.com/rogerjdeangelis/utl-spaghetti-plots-in-sas-and-r-ggplot2-sgplot
https://github.com/rogerjdeangelis/utl-visualizing-regression-differences-when-regressing-y-vs-x-and-x-vs-y-using-sas-r-ggplot
https://github.com/rogerjdeangelis/utl-creating-stacked-ascii-line-bar-plots-and-sas-sgplots-and-r-ggplot2
https://github.com/rogerjdeangelis/utl-scatter-plot-with-regression-line-coefficients-and-pvalue-in-one-datastep-sgplot
https://github.com/rogerjdeangelis/utl-sgplot-labeling-vertical-barcharts-with-percentages
https://github.com/rogerjdeangelis/utl-spaghetti-plots-in-sas-and-r-ggplot2-sgplot
https://github.com/rogerjdeangelis/utl_sas_classic_graphics_grid_of__proc_univariate_histograms
https://github.com/rogerjdeangelis/utl_sas_classic_graphs_using_phil_mason_grid_macro_for_layout
https://github.com/rogerjdeangelis/utl_table_graph_ppt
https://github.com/rogerjdeangelis/utl_wps_sas_classic_graphics_optimum_minimums_maximums_increments_for-axes

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
