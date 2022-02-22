# redpanda-actions

This [GitHub Action](https://github.com/features/actions) sets up Redpanda instance.

Docker images source [redpanda-data/redpanda](docker.vectorized.io/vectorized/redpanda).

---------
## Usage

See [action.yml](action.yml)

Basic:
```yaml
    - name: Start Redpanda
      uses: redpanda-data/github-action@v0.1.0
      with:
        version: "latest"
```

Now you should be able to connect to kafka broker running at `localhost:9092` 
