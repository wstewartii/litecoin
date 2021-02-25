#!/usr/bin/env python

import yaml

repository_url = ""
version = "0.18.1"
statefulset = "statefulset.yaml"

def load_vars():
    with open(".gitlab-ci.yml", 'r') as stream:
        data = yaml.safe_load(stream)
    return data

def update_registry(repository_url, version):
    if not repository_url:
        raise Exception("repository_url variable is not defined")

    with open(statefulset, 'r') as stream:
        data = yaml.safe_load(stream)
    data['spec']['template']['spec']['containers'][0]['image'] = repository_url + ":" + version

    print(data['spec']['template']['spec']['containers'][0]['image'])

    with open(statefulset, 'w') as f:
        data = yaml.dump(data, f)


def main():
    gitlab_data = load_vars()
    repository_url = gitlab_data['variables']['REPOSITORY_URL']
    version = gitlab_data['variables']['VERSION']
    update_registry(repository_url, version)

if __name__=="__main__": 
    main() 
