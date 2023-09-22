setup-project:
	echo ":::: Setup Project ::::"
	# Create a python virtualenv & activate it
	python3 -m venv ~/.devops
	# source ~/.devops/bin/activate

install-dependencies:
	chmod +x /setup/install-docker.sh
	/setup/install-dependencies.sh

install-hadolint:
	chmod +x /setup/install-docker.sh
	/setup/install-hadolint.sh

install-docker:
	chmod +x /setup/install-docker.sh
	/setup/install-docker.sh

install-kubectl:
	chmod +x /setup/install-kubectl.sh
	/setup/install-kubectl.sh

install-eskctl:
	chmod +x /setup/install-eksctl.sh
	/setup/install-eksctl.sh

run-docker:
	chmod +x /run/run-docker.sh
	/run/run-docker.sh

build-docker:
	chmod +x /run/build-docker.sh
	/run/build-docker.sh

upload-docker:
	chmod +x /run/upload-docker.sh
	/run/upload-docker.sh

create-cluster:
	chmod +x /run/create-cluster.sh
	/run/create-cluster.sh

deployment:
	chmod +x /run/deployment.sh
	/run/deployment.sh

rolling:
	chmod +x /run/rolling.sh
	/run/rolling.sh

rollback:
	chmod +x /run/rollback.sh
	/run/rollback.sh

forwarding:
	chmod +x /run/forwarding.sh
	/run/forwarding.sh

cleanup:
	chmod +x /run/cleanup.sh
	/run/cleanup.sh

test:
	chmod +x /run/test.sh
	/run/test.sh

lint:
	chmod +x /run/lint.sh
	/run/lint.sh

all: install lint test