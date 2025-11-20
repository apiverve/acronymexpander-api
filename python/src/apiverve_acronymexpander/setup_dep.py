from setuptools import setup, find_packages

setup(
    name='apiverve_acronymexpander',
    version='1.1.9',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Acronym Expander is an AI-powered tool for expanding acronyms to their full meanings. It uses a dictionary of common acronyms and AI for unknown ones, with optional context for better accuracy.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
