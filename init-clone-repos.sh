#!/bin/bash
cd /c
mkdir /c/antora
cd /c/antora


mkdir /c/antora/antorademo
mkdir /c/antora/antorademo/output
cd /c/antora/antorademo
git clone https://gitlab.com/antora/demo/docs-site
git clone https://gitlab.com/antora/demo/demo-component-a
git clone https://gitlab.com/antora/demo/demo-component-b

mkdir /c/antora/modelx-no
cd /c/antora/modelx-no
git clone https://github.com/modelx-no/modelx-no-playbook
#git clone https://github.com/modelx-no/antora-ui
echo "Cloning unit-ra modules..."
echo "==========================="
mkdir /c/antora/modelx-no/components
cd /c/antora/modelx-no/components
git clone https://github.com/modelx-no/unit-ra
echo ""
echo ""
echo "Cloning output repos"
echo "========================="
mkdir /c/antora/modelx-no/output/
mkdir /c/antora/modelx-no/output/github-pages/
cd /c/antora/modelx-no/output/github-pages/
git clone https://github.com/modelx-no/modelx-no.github.io
echo ""
echo "Done"