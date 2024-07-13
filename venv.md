### venv for ubuntu (no more default system wide installations)

```bash
# Install python3-venv if not already installed
sudo apt install python3-venv

# Create a virtual environment
python3 -m venv myproject_env

# Activate the virtual environment
source myproject_env/bin/activate

# Now you can use pip safely
pip install mypy
```
