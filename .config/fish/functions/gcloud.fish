function gcloud
  docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v /data/.config:/root/.config honto/gcloud:113.0.0-docker gcloud $argv
end
