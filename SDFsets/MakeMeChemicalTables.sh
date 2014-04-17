mkdir WorkHere

cp *.R WorkHere/

cp *Cleaned.sdf WorkHere/

cd WorkHere/

R CMD BATCH CleanSDF.R

R CMD BATCH hwriteMoreNow.R

firefox test.html
