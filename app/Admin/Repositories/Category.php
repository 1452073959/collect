<?php

namespace App\Admin\Repositories;

use Dcat\Admin\Repositories\EloquentRepository;
use App\Models\Category as CategoryModel;
use Dcat\Admin\Form;
class Category extends EloquentRepository
{
    /**
     * Model.
     *
     * @var string
     */
    protected $eloquentClass = CategoryModel::class;

}
