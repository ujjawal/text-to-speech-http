require 'sinatra'
get '/tts' do
  params['voice'] = '+m2'
  params['speed'] = 150
  params['pitch'] = 5
  params['amplitude'] = 90
  [200, {'Content-type' => 'audio/mpeg'}, `espeak "#{params[:text]}" --stdout -v#{params[:voice]} -p#{params[:pitch]} -s#{params[:speed]} -a#{params[:amplitude]} | lame -t --ignore-tag-errors -`]
end
