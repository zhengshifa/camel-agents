TMP_DIR=/tmp/camel_hf_tmp
echo $TMP_DIR
HF_REPO_DIR=`realpath .`
echo $HF_REPO_DIR

mkdir -p $TMP_DIR
git clone -b hf_spaces_3 https://github.com/lightaime/camel.git $TMP_DIR
cd $TMP_DIR

find apps/agents -name "*.py" | grep -v test | xargs -n 1 -I {} rsync -R {} $HF_REPO_DIR
find apps/common -name "*.py" | grep -v test | xargs -n 1 -I {} rsync -R {} $HF_REPO_DIR
find data -name "*.txt" | grep -v test | xargs -n 1 -I {} rsync -R {} $HF_REPO_DIR

rm -rf $TMP_DIR
