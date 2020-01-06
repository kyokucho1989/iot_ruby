class User
  def initialize
    @first_name = "Ko"
    @last_name = "Kondo"
    @birthday = "2112/1/1"
    @age = 30
    @birtplace = "Nagano"
    @hobby = "IoT"
  end

  def introduce
    <<~EOS

    私の名前は#{@first_name + @last_name}です。
    誕生日は#{@birthday}で、年齢は#{@age}歳。
    出身地は#{@birthplace}で、趣味は#{@hobby}です。

    EOS
  end
end
