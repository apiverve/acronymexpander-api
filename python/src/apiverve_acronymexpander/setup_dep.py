from setuptools import setup, find_packages

setup(
    name='apiverve_acronymexpander',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Acronym Expander resolves acronyms and abbreviations into their full meanings, complete with subject categories and definitions. Submit any short term up to 20 characters to get matching expansions and explanations for each domain.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/acronymexpander?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
