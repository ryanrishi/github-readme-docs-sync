const core = require('@actions/core');

function getErrorMessageForRequiredField(fieldName) {
  return `You must specify ${fieldName}`;
}

async function main() {
  let readmeApiKey, docsFolder, apiVersion, apiSettingId;

  try {
    readmeApiKey = core.getInput('readme-api-key', { required: true });
  }
  catch (e) {
    return core.setFailed(getErrorMessageForRequiredField('readme-api-key'));
  }

  // TODO surround these in try/catch
  docsFolder = core.getInput('docs-folder', { required: true });
  apiVersion = core.getInput('api-version', { required: true });
}

main();
