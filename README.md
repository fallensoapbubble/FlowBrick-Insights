

# Automated Data Pipeline: Power Automate, Databricks & Power BI 📊

This document outlines the steps to run a data pipeline that extracts a CSV file using Power Automate, transforms it with a Databricks notebook, and visualizes the results in Power BI. It also includes an optional section for practicing deployment on a simulated AWS environment using Docker.

---

## Prerequisites

Before you begin, ensure you have access to or have installed the following:
* **Microsoft Power Automate**
* **Azure Databricks**
* **Microsoft Power BI Desktop**
* **Docker Desktop** (only for the optional AWS practice)
* Your **LocalStack API key** (only for the optional AWS practice)

---

## Workflow Steps

Follow these steps in order to process the data from extraction to visualization.

### 1. Data Extraction with Power Automate
The first step is to retrieve the source data.
* Use **Power Automate** to create a flow that automatically gets the `book1.csv` file.
* Ensure this flow saves or makes the file available for the next step.

### 2. Data Transformation in Databricks
Next, you will process and clean the data.
* Bring the `book1.csv` file into your **Azure Databricks** environment.
* Run the **`job_helper.ipynb`** notebook. This script will perform the necessary transformations.
* The notebook's output is a new, transformed table saved within Databricks.

### 3. Visualization in Power BI
Now, connect to your cleaned data to create visuals.
* After the Databricks notebook has finished running, download the **Power BI connection file** for your transformed table.
* Open **Power BI Desktop** and use this file to connect directly to the transformed table in Databricks.
* You can now build reports and dashboards using the processed data.

---

## Optional: AWS Deployment Practice

This section is for users who want to practice deploying this solution in a simulated AWS environment. If you do not need to do this, you can skip this step.

1.  **Set up Docker**: Ensure Docker Desktop is installed and running on your local machine.
2.  **Configure Script**: Add your LocalStack API key to the `docker.sh` script.
3.  **Run Docker**: Execute the `docker.sh` script to build and run the containerized application using LocalStack, which mimics AWS services locally.

---

## Additional Notes
* You can further enhance this pipeline by using **Power Automate** to trigger a part of the workflow, such as sending notifications or initiating the Databricks job.