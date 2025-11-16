from airflow import DAG
from airflow.operators.bash import BashOperator


dag = DAG(
    dag_id='hello_world',
    schedule_interval='@daily',
    start_date='2024-01-01',
    catchup=False,
)

hello_task = BashOperator(
    task_id='hello_task',
    bash_command='echo "Hello, World!"',
    dag=dag,
)