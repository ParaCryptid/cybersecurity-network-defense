
from setuptools import setup, find_packages

setup(
    name='CyberDefense',
    version='1.0.0',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'flask',
        'requests',
        'pytest'
    ],
    entry_points={
        'console_scripts': [
            'cyberdefense = main:main'
        ]
    },
    author='ParaCryptid',
    description='Operational Cybersecurity Defense Application',
    license='MIT'
)
