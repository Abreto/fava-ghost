FROM python:3

COPY favaghost/ ./fava-ghost/favaghost
COPY setup.py ./fava-ghost/
COPY README.md ./fava-ghost/
RUN cd fava-ghost && pip install --no-cache-dir -e .

# TODO: 使用 docker secrets 来设置 FAVA_GHOST_REPO_CREDENTIALS
ENV FAVA_GHOST_REPO_CREDENTIALS=""
ENV FAVA_GHOST_REPO_URL=""

ENTRYPOINT ["fava-ghost"]
