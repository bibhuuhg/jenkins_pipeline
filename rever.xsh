$PROJECT = jenkins_pipeline
$ACTIVITIES = [
              'version_bump',  # Changes the version number in various source files (setup.py, __init__.py, etc)
              'changelog',  # Uses files in the news folder to create a changelog for release
              'tag',  # Creates a tag for the new version number
              'push_tag',  # Pushes the tag up to the $TAG_REMOTE
              'ghrelease'  # Creates a Github release entry for the new tag
               ]
$VERSION_BUMP_PATTERNS = [  # These note where/how to find the version numbers
                         ('jenkins_pipeline/__init__.py', r'__version__\s*=.*', "__version__ = '$VERSION'"),
                         ('setup.py', r'version\s*=.*,', "version='$VERSION',")
                         ]
$CHANGELOG_FILENAME = 'CHANGELOG.rst'  # Filename for the changelog
$CHANGELOG_TEMPLATE = 'TEMPLATE.rst'  # Filename for the news template
$PUSH_TAG_REMOTE = 'git@github.com:bibhuugh/jenkins_pipeline.git'  # Repo to push tags to

$GITHUB_ORG = bibhuugh  # Github org for Github releases and conda-forge
$GITHUB_REPO = jenkins_pipeline  # Github repo for Github releases  and conda-forge