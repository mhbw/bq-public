# Installation

## Create a new dataset (or use one if you already have it) in bigquery to store your dbt views and models

## Run the install script
    bash install.sh

## Paste and run the following:
   gcl gcloud auth application-default login \
    --scopes=https://www.googleapis.com/auth/bigquery,\
    https://www.googleapis.com/auth/drive.readonly,\
    https://www.googleapis.com/auth/iam.test

## Update the following section in bq_dbt/profiles.yml
    dataset: <YOUR DATASET HERE>

#### This should be the name of the dataset you created at the start

## Make sure you have sourced your python environment with
    source venv/bin/activate

## Verify everything is installed correctly by:
    cd bq_dbt
    dbt run

#### You should have two new views in your bigquery dataset
    stg_ga_voted_seed
    stg_ga_voter_base