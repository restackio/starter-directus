# Directus Restack repository

This is the default Directus repository to get you started for generating preview environments from a custom Directus image with Restack github application.

## Getting started

Add Directus to your Restack workspace and deploy it instantly on Restack cloud or securely connect your own AWS, GCP or Azure account.

## Directus extensions

You can add custom extensions and Restack will build them accordingly.
For that edit the Dockerfile and replace directus-extension-package-name with the name of the extension you want to install.
For example, directus-extension-myextension.

https://docs.directus.io/extensions/installing-extensions.html

https://docs.directus.io/extensions/introduction.html

[![Start Directus](https://cdn.sanity.io/images/ev3amoz3/production/cdab779fcefb18a7cac95a0a74d5442abad47fca-257x57.png)](https://console.restack.io/onboarding/store/50ce0aaa-ab29-46fe-8dc7-c85dd56d192d)

### Generating a preview environment

1. Make sure to fork this repository.
2. Follow steps in the [official Restack documentation](https://www.restack.io/docs/directus)
3. Once you open a pull request a preview environment will be generated.
4. Once your pull request is merged your initial Directus application will be provisioned with latest code from the "main" branch.
