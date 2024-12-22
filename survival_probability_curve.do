***open data
import delimited "figure_2_data.csv"
stset persistence, failure(event==1) id(author_id)

***draw the second figure

***draw women's survival probability 
sts graph if gender == "women", by(if_winner) plot1opts(lcolor("195 19 120") lwidth(thick)  lpattern(dash)) plot2opts(lcolor("195 19 120") lwidth(thick)) scheme(s1color) legend(cols(2) ring(7.5) position(1) span label(1 "Women contender") label(2 "Women prizewinner") order(2 1) size (*1.1) region(fcolor(none) lpattern(blank))) xsize(7) ysize(8) ylabel(, grid) ylabel(0(0.25)1, angle(0) labsize(*1.4)) xlabel(0(20)60, labsize(*1.4))  xtitle("Survival years since prizewinning",size(*1.5)) ytitle("Women's survival probability",size(*1.5)) title(" ") graphregion(margin(0 0 0 0)) plotregion(style(none))

***draw men's survival probability  
sts graph if gender == "men", by(if_winner) plot1opts(lcolor("27 120 55") lwidth(thick) lpattern(dash)) plot2opts(lcolor("27 120 55") lwidth(thick)) scheme(s1color) legend(cols(2) ring(7.3) position(12) span label(1 "Men contender") label(2 "Men prizewinner") order(2 1) size (*1.1) region(fcolor(none) lpattern(blank))) xsize(7) ysize(8) ylabel(, grid) ylabel(0(0.25)1, angle(0) labsize(*1.4)) xlabel(0(20)60, labsize(*1.4))  xtitle("Survival years since prizewinning",size(*1.5)) ytitle("Men's survival probability",size(*1.5)) title(" ") graphregion(margin(0 0 0 0)) plotregion(style(none))


