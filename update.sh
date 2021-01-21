	#!/bin/bash
echo "Updating component architecture-repository..."
echo "=========================="
cd /c/antora/modelx-no/components/unit-ra
git checkout main
git add .
git commit -m "Dev"
git push origin main
echo ""
echo "Updating playbook..."
echo "===================="
cd /c/antora/modelx-no/modelx-no-playbook
git checkout main
git add .
git commit -m "Dev"
git push origin main
echo ""
echo ""
echo "Running Antora..."
antora --fetch antora-playbook.yml --attribute lang=no 	--attribute wysiwig_editing=0 --attribute target_audience=all
echo ""
#echo "Updating site..."
#cd /c/gitlab/digdir/docs
#touch ./docs/.nojekyll
#touch .nojekyll
#git checkout main
#git add .
#git commit -m "Dev"
#git push origin main
cd /c/antora/modelx-no/output/github-pages/modelx-no.github.io
touch .nojekyll
git checkout main
git add .
git commit -m "Dev"
git push origin main
