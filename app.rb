require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('pry')

  get('/') do
    erb(:form)
  end

  get('/australia') do
  	@recipient="Adrian Cole"
  	@sender="Bryan Memeti"
  	erb(:australia)
  end

  get('/favourite_photos') do
  	erb(:favourite_photos)
  end

  get('/greeting_form') do
    erb(:form)
  end

  get('/greeting_card') do
    @sender = params.fetch('sender')
    @recipient = params.fetch('recipient')
    erb(:greeting_card)
  end