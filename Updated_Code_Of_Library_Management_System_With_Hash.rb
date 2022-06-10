def main_menu

    puts "Hello Welcome To This Library"
    puts "Press any Number to Check the details"
    puts "Main Menu"
    puts "1. Categories"
    puts "2. Books"
    puts "3. Authors"
    puts "0. exit"

    num = 5
    until num == 0
      print "Pleas enter the correct number according to the menu: "
      num = gets
      num = num.chomp!.to_i
      if (num == 1)
        cate()
      elsif (num == 2)
        books()
      elsif (num == 3)
        auth()
      elsif (num == 0)
        puts "Thanks To Using This System"
        break
      else
        puts "You Enter the wrong Number"
      end
    end

  end

  def cate
    puts "Categories Menu"
    puts "1. Categories List"
    puts "2. Enter New Categories"
    puts "0. Back to Main Menu"
    begin
      aFile = File.open("Categories.txt","r")
    rescue
      aFile = File.new("Categories.txt","w")
    end
    num = 5
    until num == 0
      print "Pleas enter the correct number according to the menu: "
      num = gets
      num = num.chomp!.to_i
      if (num == 1)
        aFile = File.open("Categories.txt","r")
        aFile.each{|line| puts line}
      elsif (num == 2)
        puts "Pleas enter Categories Name: "
        cat_name = gets
        cat_name = cat_name.chomp!
        puts "Pleas enter Categories ID: "
        cat_Id = gets
        cat_Id = cat_Id.chomp!
        category = {
          Name: cat_name,
          ID: cat_Id,
        }
        aFile = File.open("Categories.txt","a") do|afile|
          afile.write("#{category}\n")
          afile.close
        end

      elsif (num == 0)
        exit()
      else
        puts "You Enter the wrong Number"
      end
  end
  end

  def books
    puts "Books Menu"
    puts "1. Books List"
    puts "2. Enter New Books"
    puts "0. Back to Main Menu"
    begin
      aFile = File.open("Books.txt","r")
    rescue
      aFile = File.new("Books.txt","w")
    end
    num = 5
    until num == 0
      print "Pleas enter the correct number according to the menu: "
      num = gets
      num = num.chomp!.to_i
      if (num == 1)
        aFile = File.open("Books.txt","r")
        aFile.each{|line| puts line}
        aFile.close
      elsif (num == 2)
        puts "Pleas enter Book ID: "
        book_id = gets
        book_id = book_id.chomp!
        puts "Pleas enter Book Name: "
        book_name = gets
        book_name = book_name.chomp!
        puts "Pleas enter Publishing Year: "
        pub_year = gets
        pub_year = pub_year.chomp!
        puts "Pleas enter Categories ID: "
        cat_id = gets
        cat_id = cat_id.chomp!
        puts "Pleas enter Author ID: "
        aut_id = gets
        aut_id = aut_id.chomp!

        books = {
          Name: book_id,
          ID: book_name,
          Pub_Year: pub_year,
          Cat_id: cat_id,
          Aut_id: aut_id,
        }
        aFile = File.open("Books.txt","a") do|afile|
          afile.write("#{books}\n")
          afile.close
        end

      elsif (num == 0)
        aFile.close
        main_menu()
      else
        puts "You Enter the wrong Number"
      end
    end

  end

  def auth
    puts "Authors Menu"
    puts "1. Authors List"
    puts "2. Enter New Authors"
    puts "0. Back to Main Menu"
    begin
      aFile = File.open("Authors.txt","w")
    rescue
      aFile = File.new("Authors.txt","w")
    end

    num = 5
    until num == 0
      print "Pleas enter the correct number according to the menu: "
      num = gets
      num = num.chomp!.to_i

      if (num == 1)
        aFile = File.open("Authors.txt","r")
        aFile.each{|line| puts line}
        aFile.close
      elsif (num == 2)
        puts "Pleas enter Author ID: "
        aut_id = gets
        aut_id = aut_id.chomp!
        puts "Pleas enter Author Name: "
        aut_name = gets
        aut_name = aut_name.chomp!
        puts "Pleas enter Book ID: "
        book_id = gets
        book_id = book_id.chomp!


        author = {
          ID: aut_id,
          Name:aut_name,
          Book_id: book_id,
        }
        aFile = File.open("Authors.txt","a") do|afile|
          afile.write("#{author}\n")
          afile.close
        end

      elsif (num == 0)
        aFile.close
        main_menu()
      else
        puts "You Enter the wrong Number"
      end
    end

  end





  main_menu()






