rm -r WorkHere

mkdir WorkHere

cp *.R WorkHere/

cp YAWYE.sdf WorkHere/

cd WorkHere/

echo "####################"
echo "####################"
echo "####################"
echo "ChemmineR and OpenBabel are working on it, have a large coffee if your file is bigger than 1000 compounds"
echo "####################"
echo "####################"
echo "####################"

R CMD BATCH CleanSDF.R

R CMD BATCH hwriteMoreNow.R

echo "####################"
echo "####################"
echo "####################"
echo "Work is done, please inspect test.html for accuracy"
echo "####################"
echo "####################"
echo "####################"

firefox test.html
