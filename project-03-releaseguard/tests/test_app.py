import pytest
from app.app import app

@pytest.fixture
def client():
    app.config['TESTING'] = True
    with app.test_client() as client:
        yield client

def test_index(client):
    rv = client.get('/')
    assert rv.status_code == 200
    assert b"ReleaseGuard Protected Service" in rv.data

def test_health(client):
    rv = client.get('/health')
    assert rv.status_code == 200
    assert b"healthy" in rv.data
