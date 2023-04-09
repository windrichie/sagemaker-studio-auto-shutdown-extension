## Shell script to help with deploying a custom version of the SageMaker Studio JupyterLab autoshutdown extension
## Given a package name, this script will create a tar.gz file that includes the necessary files for the extension

# edit line below with the appropriate package name
PACKAGE_NAME="sagemaker_studio_autoshutdown-0.1.5-gpu-custom"

mkdir $PACKAGE_NAME

cp setup.py $PACKAGE_NAME/
cp pyproject.toml $PACKAGE_NAME/
cp LICENSE $PACKAGE_NAME/
cp README.md $PACKAGE_NAME/
cp PKG-INFO $PACKAGE_NAME/
cp -R sagemaker_studio_autoshutdown $PACKAGE_NAME
cp -R jupyter-config $PACKAGE_NAME

tar -czvf $PACKAGE_NAME.tar.gz $PACKAGE_NAME/

echo "Created $PACKAGE_NAME.tar.gz"