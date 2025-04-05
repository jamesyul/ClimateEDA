# Makefile para automatizar tareas del proyecto ClimateEDA

# Instalar dependencias usando requirements.txt
install:
	pip install -r requirements.txt

# Ejecutar pruebas unitarias
test:
	pytest tests/

# Abrir notebook de limpieza de datos
run_cleaning:
	jupyter notebook notebooks/clean_production_crops_livestock_E_all_data.ipynb

# Abrir notebook de exploración inicial
run_explore:
	jupyter notebook notebooks/explore_data.ipynb

# Abrir notebook de análisis EDA
run_eda:
	jupyter notebook notebooks/analisis_EDA.ipynb

# Abrir notebook de visualizaciones
run_visualizations:
	jupyter notebook notebooks/visualizations.ipynb

# Abrir notebook de modelado
run_modeling:
	jupyter notebook notebooks/modeling.ipynb

# Limpiar archivos temporales (opcional)
clean:
	find . -name "*.pyc" -exec rm -f {} \;
	find . -name "__pycache__" -exec rm -rf {} \;
	find . -name ".ipynb_checkpoints" -exec rm -rf {} \;