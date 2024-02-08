# frozen_string_literal: true

# Uncomment this and change the path if necessary to include your own
# components.
# See https://github.com/heartcombo/simple_form#custom-components
# to know more about custom components.
# Dir[Rails.root.join('lib/components/**/*.rb')].each { |f| require f }

# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  # Default class for buttons
  config.button_class = 'text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800'

  # Define the default class of the input wrapper of the boolean input.
  config.boolean_label_class = 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300'

  # How the label text should be generated altogether with the required text.
  config.label_text = lambda { |label, required, explicit_label| "#{label} #{required}" }

  # Define the way to render check boxes / radio buttons with labels.
  config.boolean_style = :inline

  # You can wrap each item in a collection of radio/check boxes with a tag
  config.item_wrapper_tag = :div

  # Defines if the default input wrapper class should be included in radio
  # collection wrappers.
  config.include_default_input_wrapper_class = false

  # CSS class to add for error notification helper.
  config.error_notification_class = 'p-4 mb-4 text-sm text-red-800 rounded-lg bg-red-50 dark:bg-gray-800 dark:text-red-400'

  # Method used to tidy up errors. Specify any Rails Array method.
  # :first lists the first message for each field.
  # :to_sentence to list all errors for each field.
  config.error_method = :to_sentence

  # add validation classes to `input_field`
  config.input_field_error_class = 'bg-red-50 border border-red-500 text-red-900 placeholder-red-700 text-sm rounded-lg focus:ring-red-500 focus:border-red-500 block w-full p-2.5 dark:bg-red-100 dark:border-red-400'
  config.input_field_valid_class = 'bg-green-50 border border-green-500 text-green-900 placeholder-green-700 text-sm rounded-lg focus:ring-green-500 focus:border-green-500 block w-full p-2.5 dark:bg-green-100 dark:border-green-400'


  # vertical forms
  #
  # vertical default_wrapper
  config.wrappers :vertical_form, class: 'mb-5' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white', error_class: '!text-red-700 dark:!text-red-500', valid_class: 'text-green-700 dark:!text-green-500'
    b.use :input, class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
    b.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end

  # vertical input for boolean
  config.wrappers :vertical_boolean, tag: 'fieldset' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :form_check_wrapper, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white pt-0 flex items-start mb-5 flex-row gap-y-4' do |bb|
      bb.use :input, class: 'w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800', error_class: '!border-red-300 !bg-red-50 focus:!ring-red-300 dark:!bg-red-700 dark:!border-red-600 dark:focus:!ring-red-600 dark:!ring-offset-red-800 dark:focus:!ring-offset-red-800', valid_class: '!border-green-300 !bg-green-50 focus:ring-green-300 dark:!bg-green-700 dark:!border-green-600 dark:focus:!ring-green-600 dark:!ring-offset-green-800 dark:focus:!ring-offset-green-800', wrap_with: { tag: :div, class: 'flex items-center h-5' }
      bb.use :label, class: 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300'
      bb.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
      bb.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # vertical input for radio buttons and check boxes
  config.wrappers :vertical_collection, item_wrapper_class: 'flex items-center', item_label_class: 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300', tag: 'fieldset', class: 'mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :legend_tag, tag: 'legend', class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white pt-0' do |ba|
      ba.use :label_text
    end
    b.use :input, class: 'w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600', error_class: '!border-red-300 !bg-red-50 focus:!ring-red-300 dark:!bg-red-700 dark:!border-red-600 dark:focus:!ring-red-600 dark:!ring-offset-red-800 dark:focus:!ring-offset-red-800', valid_class: '!border-green-300 !bg-green-50 focus:!ring-green-300 dark:!bg-green-700 dark:!border-green-600 dark:focus:!ring-green-600 dark:!ring-offset-green-800 dark:focus:!ring-offset-green-800', wrap_with: { tag: :div, class: 'flex items-center h-5' }
    b.use :full_error, wrap_with: { class: 'mt-2 text-sm text-red-600 dark:text-red-500 d-block' }
    b.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end

  # vertical input for inline radio buttons and check boxes
  config.wrappers :vertical_collection_inline, item_wrapper_class: 'flex items-center me-4', item_label_class: 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300', tag: 'fieldset', class: 'flex mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :legend_tag, tag: 'legend', class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white pt-0' do |ba|
      ba.use :label_text
    end
    b.use :input, class: 'w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600', error_class: '!border-red-300 !bg-red-50 focus:!ring-red-300 dark:!bg-red-700 dark:!border-red-600 dark:focus:!ring-red-600 dark:!ring-offset-red-800 dark:focus:!ring-offset-red-800', valid_class: '!border-green-300 !bg-green-50 focus:!ring-green-300 dark:!bg-green-700 dark:!border-green-600 dark:focus:!ring-green-600 dark:!ring-offset-green-800 dark:focus:!ring-offset-green-800', wrap_with: { tag: :div, class: 'flex items-center h-5' }
    b.use :full_error, wrap_with: { class: 'mt-2 text-sm text-red-600 dark:text-red-500 d-block' }
    b.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end

  # vertical file input
  config.wrappers :vertical_file, class: 'mb-5' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :readonly
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.use :input, class: 'block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400', error_class: '!text-red-900 !border-red-300 !bg-red-50 dark:!text-red-400 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400', valid_class: '!text-green-900 !border-green-300 !bg-green-50 dark:!text-green-400 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400'
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
    b.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end

  # vertical select input
  config.wrappers :vertical_select, class: 'mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.use :input, class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
    b.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end

  # vertical multi select
  config.wrappers :vertical_multi_select, class: 'mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.wrapper class: 'sm:flex' do |ba|
      ba.use :input, class: 'mx-1 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
    end
    b.use :full_error, wrap_with: { class: 'mt-2 text-sm text-red-600 dark:text-red-500 d-block' }
    b.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end

  # vertical range input
  config.wrappers :vertical_range, class: 'mb-5' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :readonly
    b.optional :step
    b.use :label, class: 'block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.use :input, class: 'w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer dark:bg-gray-700', error_class: '!bg-red-200 dark:!bg-red-700', valid_class: '!bg-green-200 dark:!bg-green-700'
    b.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
    b.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end


  # horizontal forms
  #
  # horizontal default_wrapper
  config.wrappers :horizontal_form, class: 'mb-5' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'col-sm-3 block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
      ba.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
      ba.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # horizontal input for boolean
  config.wrappers :horizontal_boolean, class: 'mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :grid_wrapper, class: 'col-sm-9 offset-sm-3' do |wr|
      wr.wrapper :form_check_wrapper, class: 'form-check' do |bb|
        bb.use :input, class: 'w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600', error_class: '!text-red-600 !bg-red-100 !border-red-300 focus:!ring-red-500 dark:focus:!ring-red-600 dark:!ring-offset-red-800 dark:!bg-red-700 dark:!border-red-600', valid_class: '!text-green-600 !bg-green-100 !border-green-300 focus:!ring-green-500 dark:focus:!ring-green-600 dark:!ring-offset-green-800 dark:!bg-green-700 dark:!border-green-600'
        bb.use :label, class: 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300'
        bb.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
        bb.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
      end
    end
  end

  # horizontal input for radio buttons and check boxes
  config.wrappers :horizontal_collection, item_wrapper_class: 'flex items-center', item_label_class: 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300', class: 'mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 block mb-2 text-sm font-medium text-gray-900 dark:text-white pt-0'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600', error_class: '!text-red-600 !bg-red-100 !border-red-300 focus:!ring-red-500 dark:focus:!ring-red-600 dark:!ring-offset-red-800 dark:!bg-red-700 dark:!border-red-600', valid_class: '!text-green-600 !bg-green-100 !border-green-300 focus:!ring-green-500 dark:focus:!ring-green-600 dark:!ring-offset-green-800 dark:!bg-green-700 dark:!border-green-600'
      ba.use :full_error, wrap_with: { class: 'mt-2 text-sm text-red-600 dark:text-red-500 d-block' }
      ba.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # horizontal input for inline radio buttons and check boxes
  config.wrappers :horizontal_collection_inline, item_wrapper_class: 'flex items-center me-4', item_label_class: 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300', class: 'flex mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 block mb-2 text-sm font-medium text-gray-900 dark:text-white pt-0'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600', error_class: '!text-red-600 !bg-red-100 !border-red-300 focus:!ring-red-500 dark:focus:!ring-red-600 dark:!ring-offset-red-800 dark:!bg-red-700 dark:!border-red-600', valid_class: '!text-green-600 !bg-green-100 !border-green-300 focus:!ring-green-500 dark:focus:!ring-green-600 dark:!ring-offset-green-800 dark:!bg-green-700 dark:!border-green-600'
      ba.use :full_error, wrap_with: { class: 'mt-2 text-sm text-red-600 dark:text-red-500 d-block' }
      ba.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # horizontal file input
  config.wrappers :horizontal_file, class: 'mb-5' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :readonly
    b.use :label, class: 'col-sm-3 block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
      ba.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
      ba.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # horizontal select input
  config.wrappers :horizontal_select, class: 'mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
      ba.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
      ba.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # horizontal multi select
  config.wrappers :horizontal_multi_select, class: 'mb-5' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 block mb-2 text-sm font-medium text-gray-900 dark:text-white'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.wrapper class: 'flex justify-between items-center' do |bb|
        bb.use :input, class: 'mx-1 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
      end
      ba.use :full_error, wrap_with: { class: 'mt-2 text-sm text-red-600 dark:text-red-500 d-block' }
      ba.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # horizontal range input
  config.wrappers :horizontal_range, class: 'mb-5' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :readonly
    b.optional :step
    b.use :label, class: 'col-sm-3 block mb-2 text-sm font-medium text-gray-900 dark:text-white pt-0'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer dark:bg-gray-700', error_class: '!bg-red-200 dark:!bg-red-700', valid_class: '!bg-green-200 dark:!bg-green-700'
      ba.use :full_error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
      ba.use :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end


  # inline forms
  #
  # inline default_wrapper
  config.wrappers :inline_form, class: 'col-12' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'sr-only'
    b.use :input, class: 'bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500', error_class: '!bg-red-50 !border-red-300 !text-red-900 focus:!ring-red-500 focus:!border-red-500 dark:!bg-red-700 dark:!border-red-600 dark:!placeholder-red-400 dark:focus:!ring-red-500 dark:focus:!border-red-500', valid_class: '!bg-green-50 !border-green-300 !text-green-900 focus:!ring-green-500 focus:!border-green-500 dark:!bg-green-700 dark:!border-green-600 dark:!placeholder-green-400 dark:focus:!ring-green-500 dark:focus:!border-green-500'
    b.use :error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
    b.optional :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
  end

  # inline input for boolean
  config.wrappers :inline_boolean do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :form_check_wrapper, class: 'flex items-center mb-4' do |bb|
      bb.use :input, class: 'w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-800 focus:ring-2 dark:bg-gray-700 dark:border-gray-600', error_class: '!border-red-300 !bg-red-50 focus:!ring-red-300 dark:!bg-red-700 dark:!border-red-600 dark:focus:!ring-red-600 dark:!ring-offset-red-800 dark:focus:!ring-offset-red-800', valid_class: '!border-green-300 !bg-green-50 focus:!ring-green-300 dark:!bg-green-700 dark:!border-green-600 dark:focus:!ring-green-600 dark:!ring-offset-green-800 dark:focus:!ring-offset-green-800'
      bb.use :label, class: 'mx-2 text-sm font-medium text-gray-900 dark:text-gray-300'
      bb.use :error, wrap_with: { tag: :p, class: 'mt-2 text-sm text-red-600 dark:text-red-500' }
      bb.optional :hint, wrap_with: { class: 'mt-1 text-sm text-gray-500 dark:text-gray-300' }
    end
  end

  # The default wrapper to be used by the FormBuilder.
  config.default_wrapper = :vertical_form

  # Default class for buttons
  config.button_class = 'text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800'

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  config.wrapper_mappings = {
    boolean:       :vertical_boolean,
    check_boxes:   :vertical_collection,
    date:          :vertical_multi_select,
    datetime:      :vertical_multi_select,
    file:          :vertical_file,
    radio_buttons: :vertical_collection,
    range:         :vertical_range,
    time:          :vertical_multi_select,
    select:        :vertical_select
  }
end
