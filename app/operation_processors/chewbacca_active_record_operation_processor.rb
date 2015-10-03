class ChewbaccaActiveRecordOperationsProcessor < ActiveRecordOperationsProcessor
  after_show_operation :add_meta
  after_find_operation :add_meta

  def add_meta
    chewbacca = {
      angry: 'grrrwaaaaaarggggh',
      laughing: 'brrwhhhaargh',
      dissatisfied: 'wawoohrgh',
      indifferent: 'br',
      sceptical: 'mmmrwwaghgh',
      frustrated: 'sputamureaghrh'
    }
    moods = [:angry, :laughing, :dissatisfied, :indifferent, :sceptical, :frustrated]

    mood = moods.sample
    noise = chewbacca[mood]
    @operation_meta[:chewbacca] = noise
    @operation_meta[:mood] = mood

    puts @operation_meta
  end
end