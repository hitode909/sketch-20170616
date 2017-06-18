const file = process.argv[2];
const url = process.argv[3];
const access_token = process.argv[4];
const collection_id = process.argv[5];

const Gyazo  = require('gyazo-api');
const client = new Gyazo(access_token);

client.upload(file, {
  title: url,
  desc: url,
  referer_url: url,
  collection_id: collection_id,
})
.then(function(res){
  console.log(res.data.image_id);
  console.log(res.data.permalink_url);
})
.catch(function(err){
  console.error(err);
});
