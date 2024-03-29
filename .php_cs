<?php
return PhpCsFixer\Config::create()
    ->setRules([
        '@Symfony'         => true,
        'class_definition' => [
            'multiLineExtendsEachSingleLine' => true,
        ],
        'ordered_class_elements' => [
            'use_trait', 'constant_public', 'constant_protected', 'constant_private',
            'property_public', 'property_protected', 'property_private', 'construct',
            'destruct', 'magic', 'phpunit', 'method_public', 'method_protected',
            'method_private',
        ],
        'binary_operator_spaces'            => ['default' => 'align_single_space_minimal'],
        'array_syntax'                      => ['syntax' => 'short'],
        'concat_space'                      => ['spacing' => 'one'],
        'blank_line_after_namespace'        => true,
        'linebreak_after_opening_tag'       => true,
        'not_operator_with_successor_space' => true,
        'ordered_imports'                   => true,
        'yoda_style'                        => false,
        'phpdoc_order'                      => true,
    ]);
?>