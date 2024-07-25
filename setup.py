from setuptools import setup, find_packages

requirements = [
    # package requirements go here
]

setup(
    name='jenkins_pipeline',
    version='0.1.0',
    description="test pipeline",
    license="Proprietary",
    author="bibhudutt mohapatro",
    author_email='bibhu.giet@gmail.com',
    include_package_data=True,
    url='https://github.com/bibhuugh/jenkins_pipeline',
    package_dir={'':'src'},
    packages=find_packages(where="src"),
    entry_points={
        'console_scripts': [
            'jenkins_python=jenkins_python.cli:cli'
        ]
    },
    install_requires=requirements,
    keywords='jenkins_pipeline',
    classifiers=[
        'Programming Language :: Python :: 3.8',
    ]
)
